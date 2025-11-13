.class public final Lcom/android/systemui/common/ui/binder/IconViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/common/ui/binder/IconViewBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/common/ui/binder/IconViewBinder;

    invoke-direct {v0}, Lcom/android/systemui/common/ui/binder/IconViewBinder;-><init>()V

    sput-object v0, Lcom/android/systemui/common/ui/binder/IconViewBinder;->INSTANCE:Lcom/android/systemui/common/ui/binder/IconViewBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Lcom/android/systemui/common/shared/model/Icon;Landroid/widget/ImageView;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/common/ui/binder/ContentDescriptionViewBinder;->INSTANCE:Lcom/android/systemui/common/ui/binder/ContentDescriptionViewBinder;

    invoke-virtual {p0}, Lcom/android/systemui/common/shared/model/Icon;->getContentDescription()Lcom/android/systemui/common/shared/model/ContentDescription;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/android/systemui/common/ui/binder/ContentDescriptionViewBinder;->bind(Lcom/android/systemui/common/shared/model/ContentDescription;Landroid/view/View;)V

    instance-of v0, p0, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    iget-object p0, p0, Lcom/android/systemui/common/shared/model/Icon$Loaded;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget p0, p0, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
