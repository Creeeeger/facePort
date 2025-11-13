.class public final Lcom/android/systemui/common/ui/binder/ContentDescriptionViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/common/ui/binder/ContentDescriptionViewBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/common/ui/binder/ContentDescriptionViewBinder;

    invoke-direct {v0}, Lcom/android/systemui/common/ui/binder/ContentDescriptionViewBinder;-><init>()V

    sput-object v0, Lcom/android/systemui/common/ui/binder/ContentDescriptionViewBinder;->INSTANCE:Lcom/android/systemui/common/ui/binder/ContentDescriptionViewBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Lcom/android/systemui/common/shared/model/ContentDescription;Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    iget-object p0, p0, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;->description:Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast p0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    iget p0, p0, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;->res:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
