.class public final Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->a:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$1;)V

    return-object v0
.end method

.method public setParameterValues(Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ConfigurationResult$Builder;->a:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    return-object p0
.end method
