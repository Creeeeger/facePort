.class public final Lcom/android/systemui/common/ui/binder/TextViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/common/ui/binder/TextViewBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/common/ui/binder/TextViewBinder;

    invoke-direct {v0}, Lcom/android/systemui/common/ui/binder/TextViewBinder;-><init>()V

    sput-object v0, Lcom/android/systemui/common/ui/binder/TextViewBinder;->INSTANCE:Lcom/android/systemui/common/ui/binder/TextViewBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/widget/TextView;Lcom/android/systemui/common/shared/model/Text;)V
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/common/shared/model/Text$Resource;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Lcom/android/systemui/common/shared/model/Text$Resource;

    iget p1, p1, Lcom/android/systemui/common/shared/model/Text$Resource;->res:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/common/shared/model/Text$Loaded;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/common/shared/model/Text$Loaded;

    iget-object p1, p1, Lcom/android/systemui/common/shared/model/Text$Loaded;->text:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
