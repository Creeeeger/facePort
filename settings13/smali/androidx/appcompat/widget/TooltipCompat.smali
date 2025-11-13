.class public Landroidx/appcompat/widget/TooltipCompat;
.super Ljava/lang/Object;
.source "TooltipCompat.java"


# direct methods
.method public static seslSetNextTooltipForceActionBarPosX(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isForceX"
        }
    .end annotation

    .line 51
    invoke-static {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->seslSetTooltipForceActionBarPosX(Z)V

    return-void
.end method

.method public static seslSetNextTooltipForceBelow(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isBelow"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->seslSetTooltipForceBelow(Z)V

    return-void
.end method

.method public static setTooltipNull(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tooltipNull"
        }
    .end annotation

    .line 79
    invoke-static {p0}, Landroidx/appcompat/widget/TooltipCompatHandler;->seslSetTooltipNull(Z)V

    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "tooltipText"
        }
    .end annotation

    .line 43
    invoke-static {p0, p1}, Landroidx/appcompat/widget/TooltipCompatHandler;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method
