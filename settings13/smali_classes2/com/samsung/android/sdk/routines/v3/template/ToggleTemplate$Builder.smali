.class public Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate;

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->a:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate;-><init>(Landroid/os/Bundle;Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$1;)V

    return-object v0
.end method

.method public setDefaultSelection(Z)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->a:Landroid/os/Bundle;

    const-string v1, "default_selection"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->a:Landroid/os/Bundle;

    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOffLabel(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->a:Landroid/os/Bundle;

    const-string v1, "label_off"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOnLabel(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->a:Landroid/os/Bundle;

    const-string v1, "label_on"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
