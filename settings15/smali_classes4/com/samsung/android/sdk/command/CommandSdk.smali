.class public final Lcom/samsung/android/sdk/command/CommandSdk;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sWaitLock:Ljava/lang/Object;


# instance fields
.field public mActionHandler:Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/command/CommandSdk;->sWaitLock:Ljava/lang/Object;

    return-void
.end method
