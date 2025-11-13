.class public final synthetic Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda3;->f$0:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda3;->f$0:Landroid/os/Bundle;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->$r8$lambda$J8_czDIGgGLuXWNDUMCyilUgqEQ(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
