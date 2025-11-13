.class public final synthetic Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->mLastCommitTime:J

    iget p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->mCurrentScale:F

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;->this$0:Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "cursor_thickness"

    const/4 v0, -0x2

    invoke-static {p0, p2, p1, v0}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method
