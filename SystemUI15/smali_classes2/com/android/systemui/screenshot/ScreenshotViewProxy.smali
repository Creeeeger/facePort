.class public interface abstract Lcom/android/systemui/screenshot/ScreenshotViewProxy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract addQuickShareChip(Landroid/app/Notification$Action;)V
.end method

.method public abstract announceForAccessibility(Ljava/lang/String;)V
.end method

.method public abstract fadeForSharedTransition()V
.end method

.method public abstract getScreenshotPreview()Landroid/view/View;
.end method

.method public abstract getView()Landroid/view/ViewGroup;
.end method

.method public abstract isAttachedToWindow()Z
.end method

.method public abstract isDismissing()Z
.end method

.method public abstract requestDismissal(Lcom/android/systemui/screenshot/ScreenshotEvent;)V
.end method

.method public abstract reset()V
.end method

.method public abstract setCallbacks(Lcom/android/systemui/screenshot/ScreenshotController$3;)V
.end method

.method public abstract setChipIntents(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
.end method

.method public abstract setPackageName(Ljava/lang/String;)V
.end method

.method public abstract stopInputListening()V
.end method

.method public abstract updateOrientation(Landroid/view/WindowInsets;)V
.end method
