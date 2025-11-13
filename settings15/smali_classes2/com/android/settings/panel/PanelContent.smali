.class public interface abstract Lcom/android/settings/panel/PanelContent;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;


# virtual methods
.method public abstract getSeeMoreIntent()Landroid/content/Intent;
.end method

.method public abstract getSlices()Ljava/util/List;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public getViewType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public registerCallback(Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;)V
    .locals 0

    return-void
.end method
