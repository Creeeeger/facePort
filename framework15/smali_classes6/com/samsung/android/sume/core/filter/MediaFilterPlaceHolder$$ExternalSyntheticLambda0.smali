.class public final synthetic Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;

    check-cast p1, Ljava/util/function/Consumer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilterPlaceHolder;->lambda$reset$0$com-samsung-android-sume-core-filter-MediaFilterPlaceHolder(Ljava/util/function/Consumer;)V

    return-void
.end method
