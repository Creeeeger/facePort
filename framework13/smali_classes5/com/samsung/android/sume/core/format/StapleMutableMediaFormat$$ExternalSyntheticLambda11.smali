.class public final synthetic Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat;->lambda$containsAllOf$4$com-samsung-android-sume-core-format-StapleMutableMediaFormat(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
