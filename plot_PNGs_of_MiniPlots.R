

# DBAD diagram of hierarchical models

# Generate the Mini-Plots of different distributions

Manager <- list(mainLineColor = "skyblue",
                mainLineWidth = 6,
                baseLineWidth = 2,
                directory     = "./MiniPlots/",
                miniPlots     = c("Normal", "Gamma", "Beta", "Dirichlet"),
                margin        = c(0.5, 0.1, 0.1, 0.1),
                dimPNG        = c(width = 180, height = 60)
         )


plotPNGsOfMiniPlots <- function() {
    plots     <- Manager$miniPlots
    directory <- Manager$directory
    .checkTarget(directory)
    for (plot in plots) {
        png(file = paste0(directory, plot, ".png"), 
                width  = Manager$dimPNG["width"],
                height = Manager$dimPNG["height"])
            do.call(paste0(".plot", plot, "MiniPlot"), list())
        dev.off()
    }
}

.checkTarget <- function(directory) {
    dir.create(directory, showWarnings = FALSE)
}

.plotNormalMiniPlot <- function() {
    xLim <- 3.5
    x <- seq(-xLim, xLim, length = 501)
    y <- dnorm(x, 0, 1)
    .generateMiniPlot(x, y)   
}

.plotGammaMiniPlot <- function() {
    x <- seq(0, 1, length = 502)
    x <- x[-1]  # without 0
    y <- dgamma(x, 2, 6)
    .generateMiniPlot(x, y)  
}

.plotDirichletMiniPlot <- function() {
    require(gtools)
    x <- seq(0, 1, length = 502)
    x <- x[-1]  # without 0
    x <- x[-501] # without 1
    y <- ddirichlet(cbind(x, 1-x), c(.8, .8))
    .generateMiniPlot(x, y)  
}

.plotBetaMiniPlot <- function() {
    x <- seq(0, 1, length = 503)
    x <- x[-c(1, 503)]  # without 0, 1
    y <- dbeta(x, 7, 4)
    .generateMiniPlot(x, y)  
}


.generateMiniPlot <- function(x, y) {
    op <- par(mar = Manager$margin)
        yMin  <- -0.06
        ylims <- c(yMin, max(y))
        plot(x, y, 
                 type = "l",
                 axes = FALSE,
                 ylim = ylims,
                 col = Manager$mainLineColor,
                 lwd = Manager$mainLineWidth
             )
        abline(h = yMin, lwd = Manager$baseLineWidth, xpd = TRUE)
    par(op)
}

# show example
.plotNormalMiniPlot()

# generate all mini-plots
plotPNGsOfMiniPlots()


# clean up
rm("plotPNGsOfMiniPlots", "Manager")

# done




