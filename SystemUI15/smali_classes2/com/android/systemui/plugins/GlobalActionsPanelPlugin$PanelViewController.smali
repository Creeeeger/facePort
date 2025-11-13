.class public interface abstract Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x0
.end annotation


# static fields
.field public static final VERSION:I


# virtual methods
.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getPanelContent()Landroid/view/View;
.end method

.method public abstract onDeviceLockStateChanged(Z)V
.end method

.method public abstract onDismissed()V
.end method
