.class public Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogButton"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;->b:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;->b:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;->a:Ljava/lang/String;

    return-object p0
.end method
