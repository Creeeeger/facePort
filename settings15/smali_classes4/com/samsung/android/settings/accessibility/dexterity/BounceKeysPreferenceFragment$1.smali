.class public final Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string p1, "BounceKeysPreferenceFragment"

    const-string v0, "Touch Blocker is deactivated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/BounceKeysPreferenceFragment;->mIsBlocking:Z

    return-void
.end method
