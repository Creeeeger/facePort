.class Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;-><init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Landroid/content/Context;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAgreement()Z
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isDiagnosticAgree(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
