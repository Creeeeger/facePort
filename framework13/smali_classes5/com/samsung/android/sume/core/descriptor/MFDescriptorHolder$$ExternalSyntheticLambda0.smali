.class public final synthetic Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;

    check-cast p1, Ljava/util/function/Function;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorHolder;->lambda$replace$0$com-samsung-android-sume-core-descriptor-MFDescriptorHolder(Ljava/util/function/Function;)Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object p1

    return-object p1
.end method
