.class public interface abstract Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/SupportVersionChecker;
.end annotation


# virtual methods
.method public abstract getShortCutAreaViews()Ljava/util/ArrayList;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbcd
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isDozing()Z
.end method

.method public abstract isKeyguardState()Z
.end method

.method public abstract onMusicItemExpaned(Z)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbcc
    .end annotation
.end method

.method public abstract setFullScreenMode(ZJ)V
.end method

.method public abstract setFullScreenMode(ZJLandroid/animation/Animator$AnimatorListener;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3fb
    .end annotation
.end method

.method public abstract setMusicShown(Z)V
.end method

.method public abstract setNowBarExpandMode(ZJLandroid/animation/Animator$AnimatorListener;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbba
    .end annotation
.end method

.method public abstract setNowBarVisibility(Z)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbba
    .end annotation
.end method

.method public abstract showOneCardAnimation(Z)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbce
    .end annotation
.end method

.method public abstract startActivity(Landroid/app/PendingIntent;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;ZI)V
.end method

.method public abstract userActivity()V
.end method
