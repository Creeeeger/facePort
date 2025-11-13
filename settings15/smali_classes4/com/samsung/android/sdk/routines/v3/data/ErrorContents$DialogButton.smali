.class public final Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Activate"

    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;->b:Landroid/app/PendingIntent;

    return-void
.end method
