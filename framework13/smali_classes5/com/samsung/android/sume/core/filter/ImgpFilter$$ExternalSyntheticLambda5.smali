.class public final synthetic Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/ImgpFilter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/ImgpFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/filter/ImgpFilter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ImgpFilter$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/filter/ImgpFilter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/filter/ImgpFilter;->lambda$init$0$com-samsung-android-sume-core-filter-ImgpFilter(Ljava/lang/Object;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object p1

    return-object p1
.end method
