.class public final Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->c:Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$1;)V

    return-object v0
.end method

.method public setCustomButton(Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->c:Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;

    return-object p0
.end method

.method public setDialogTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->a:Ljava/lang/String;

    return-object p0
.end method
