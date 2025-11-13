.class public Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;->a:Landroid/os/Bundle;

    return-void
.end method

.method public static emptyContents()Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;->a:Landroid/os/Bundle;

    return-object p0
.end method
