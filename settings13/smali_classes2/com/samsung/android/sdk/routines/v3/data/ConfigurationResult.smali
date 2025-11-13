.class public final Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;
    }
.end annotation


# instance fields
.field public final a:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;->a:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;->a:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->toJsonString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "intent_params"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public sendActivityResult(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;->a()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method
