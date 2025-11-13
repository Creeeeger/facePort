.class public final Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionPreferenceFragment$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionPreferenceFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionPreferenceFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "selfChange :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "uri:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionPreferenceFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/AutoActionPreferenceFragment;->updatePreferenceStates()V

    return-void
.end method
