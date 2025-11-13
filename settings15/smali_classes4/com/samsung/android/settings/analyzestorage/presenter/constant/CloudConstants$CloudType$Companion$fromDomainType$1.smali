.class public final Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion$fromDomainType$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $i:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion$fromDomainType$1;->$i:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    const-string v0, "cloudType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->getValue()I

    move-result p1

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion$fromDomainType$1;->$i:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
