.class public abstract Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ConstFlashNoti;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final APP_LIST_SEPARATOR_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/advanced/flashnotification/ConstFlashNoti;->APP_LIST_SEPARATOR_STRING:Ljava/lang/String;

    return-void
.end method
