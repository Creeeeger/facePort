.class public final Lcom/android/settings/PointerSpeedPreference$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/PointerSpeedPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/PointerSpeedPreference;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreference$1;->this$0:Lcom/android/settings/PointerSpeedPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/PointerSpeedPreference$1;->this$0:Lcom/android/settings/PointerSpeedPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/InputSettings;->getPointerSpeed(Landroid/content/Context;)I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 p1, p1, 0x7

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
