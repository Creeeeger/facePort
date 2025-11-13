.class public final Lcom/android/systemui/common/shared/model/Text$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/common/shared/model/Text$Companion;-><init>()V

    return-void
.end method

.method public static loadText(Lcom/android/systemui/common/shared/model/Text;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/android/systemui/common/shared/model/Text$Loaded;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/systemui/common/shared/model/Text$Loaded;

    iget-object p0, p0, Lcom/android/systemui/common/shared/model/Text$Loaded;->text:Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/android/systemui/common/shared/model/Text$Resource;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/android/systemui/common/shared/model/Text$Resource;

    iget p0, p0, Lcom/android/systemui/common/shared/model/Text$Resource;->res:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
