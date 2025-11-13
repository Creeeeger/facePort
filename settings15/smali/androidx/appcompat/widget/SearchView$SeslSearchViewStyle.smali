.class final enum Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeslSearchViewStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

.field public static final enum DARK_WITHOUT_BACKGROUND:Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

.field public static final enum DARK_WITH_BACKGROUND:Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

.field public static final enum LIGHT_WITHOUT_BACKGROUND:Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

.field public static final enum LIGHT_WITH_BACKGROUND:Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;


# instance fields
.field private final mHintTextColorRes:I

.field private final mIconColorRes:I

.field private final mTextColorRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    const v3, 0x7f060903

    const v4, 0x7f060905

    const-string v5, "LIGHT_WITH_BACKGROUND"

    const/4 v1, 0x0

    const v2, 0x7f060907

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;-><init>(IIIILjava/lang/String;)V

    sput-object v6, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->LIGHT_WITH_BACKGROUND:Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    new-instance v0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    const v10, 0x7f060908

    const v11, 0x7f06090a

    const-string v12, "LIGHT_WITHOUT_BACKGROUND"

    const/4 v8, 0x1

    const v9, 0x7f06090c

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->LIGHT_WITHOUT_BACKGROUND:Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    new-instance v1, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    const v16, 0x7f060902

    const v17, 0x7f060904

    const-string v18, "DARK_WITH_BACKGROUND"

    const/4 v14, 0x2

    const v15, 0x7f060906

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;-><init>(IIIILjava/lang/String;)V

    sput-object v1, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->DARK_WITH_BACKGROUND:Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    new-instance v2, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    const v10, 0x7f060909

    const v11, 0x7f06090b

    const-string v12, "DARK_WITHOUT_BACKGROUND"

    const/4 v8, 0x3

    const v9, 0x7f06090d

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;-><init>(IIIILjava/lang/String;)V

    sput-object v2, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->DARK_WITHOUT_BACKGROUND:Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    filled-new-array {v6, v0, v1, v2}, [Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->$VALUES:[Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p5, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->mTextColorRes:I

    iput p3, p0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->mHintTextColorRes:I

    iput p4, p0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->mIconColorRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;
    .locals 1

    const-class v0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;
    .locals 1

    sget-object v0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->$VALUES:[Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    invoke-virtual {v0}, [Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;

    return-object v0
.end method


# virtual methods
.method public final apply(Landroid/content/res/Resources;Landroidx/appcompat/widget/SearchView$SearchAutoComplete;Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SeslSearchViewStyle] apply "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->mTextColorRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->mHintTextColorRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget v0, p0, Landroidx/appcompat/widget/SearchView$SeslSearchViewStyle;->mIconColorRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
