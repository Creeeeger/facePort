.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->$r8$lambda$Jgakf43L10Q7a3UIoqyYUjQHWf8(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
