.class public interface abstract Lcom/android/systemui/plugins/subscreen/SubRoom;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final EXTRA_FOCUS_REQUIRED:Ljava/lang/String; = "focusRequired"

.field public static final EXTRA_HAS_UNREAD:Ljava/lang/String; = "hasUnread"

.field public static final EXTRA_KEY_AIRPLANE_MODE:Ljava/lang/String; = "airplane"

.field public static final EXTRA_KEY_NO_SIGNAL:Ljava/lang/String; = "no_siginal"

.field public static final EXTRA_KEY_QUICK_PANEL_SWIPE_FRACTION:Ljava/lang/String; = "quickPanelSwipeFraction"

.field public static final EXTRA_KEY_ROUTINE_MODE:Ljava/lang/String; = "routine_mode"

.field public static final EXTRA_VALUE_CLOCK:Ljava/lang/String; = "clock"

.field public static final EXTRA_VALUE_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final EXTRA_VALUE_NO_SIGNAL:I = 0x1

.field public static final EXTRA_VALUE_NO_SIGNAL_SIM_1:I = 0x10

.field public static final EXTRA_VALUE_NO_SIGNAL_SIM_2:I = 0x100

.field public static final STATE_BIO_POPUP_CANCELED:Ljava/lang/String; = "STATE_BIO_POPUP_CANCELED"

.field public static final STATE_MUSIC_CAPSULE_INFO:Ljava/lang/String; = "STATE_MUSIC_CAPSULE_INFO"

.field public static final STATE_NETWORK_INFO:Ljava/lang/String; = "STATE_NETWORK_INFO"

.field public static final STATE_POPUP_DISMISSED:Ljava/lang/String; = "STATE_POPUP_DISMISSED"

.field public static final STATE_UNREAD_NOTIFICATION:Ljava/lang/String; = "STATE_UNREAD_NOTIFICATION"


# virtual methods
.method public abstract getView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public onCloseFinished()V
    .locals 0

    return-void
.end method

.method public onCloseStarted()V
    .locals 0

    return-void
.end method

.method public onOpenFinished()V
    .locals 0

    return-void
.end method

.method public onOpenStarted()V
    .locals 0

    return-void
.end method

.method public abstract removeListener()V
.end method

.method public abstract request(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract setListener(Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;)V
.end method
