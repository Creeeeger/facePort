.class public final Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedTypePref:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mPreviewRunnable:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda0;->run()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    iget p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mValue:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
