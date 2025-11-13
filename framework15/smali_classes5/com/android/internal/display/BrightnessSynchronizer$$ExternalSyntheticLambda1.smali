.class public final synthetic Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/display/BrightnessSynchronizer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/display/BrightnessSynchronizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/display/BrightnessSynchronizer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->$r8$lambda$rTm82akFekRfUDlrQDjjJwZ30ls(Lcom/android/internal/display/BrightnessSynchronizer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
