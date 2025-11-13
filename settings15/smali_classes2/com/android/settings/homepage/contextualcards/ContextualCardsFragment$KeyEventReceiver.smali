.class Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$KeyEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyEventReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$KeyEventReceiver;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_5

    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "recentapps"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "homekey"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    sget-boolean p2, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->DEBUG:Z

    if-eqz p2, :cond_2

    const-string p2, "key pressed = "

    const-string v0, "ContextualCardsFragment"

    invoke-static {p2, p1, v0}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment$KeyEventReceiver;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->sRestartLoaderNeeded:Z

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    :cond_3
    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProviderImpl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mUiSessionToken:J

    return-void

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    return-void
.end method
