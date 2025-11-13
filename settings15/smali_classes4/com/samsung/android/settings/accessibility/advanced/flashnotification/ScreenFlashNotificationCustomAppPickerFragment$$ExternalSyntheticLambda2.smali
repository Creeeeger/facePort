.class public final synthetic Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$$ExternalSyntheticLambda2;->f$0:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment$$ExternalSyntheticLambda2;->f$0:Landroid/content/pm/ApplicationInfo;

    check-cast p1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;

    sget-object v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ScreenFlashNotificationCustomAppPickerFragment;->items:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/FlashNotificationUtil$ScreenFlashInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
