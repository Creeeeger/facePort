.class public final Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public blockedFlag:I

.field public category:Ljava/lang/String;

.field public controller:Ljava/lang/String;

.field public exclusiveFeature:Ljava/lang/String;

.field public final priority:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->exclusiveFeature:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->blockedFlag:I

    const-string/jumbo v1, "others"

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->priority:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->exclusiveFeature:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->blockedFlag:I

    const-string/jumbo v0, "others"

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->category:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutFeatureManager$Info;->priority:I

    return-void
.end method
