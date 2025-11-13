.class public final Lcom/android/systemui/communal/data/model/CommunalWidgetCategories;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/communal/data/model/CommunalWidgetCategories$Companion;


# instance fields
.field public final categories:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/data/model/CommunalWidgetCategories$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/data/model/CommunalWidgetCategories$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/data/model/CommunalWidgetCategories;->Companion:Lcom/android/systemui/communal/data/model/CommunalWidgetCategories$Companion;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/communal/data/model/CommunalWidgetCategories;->categories:I

    return-void
.end method

.method public static final synthetic box-impl(I)Lcom/android/systemui/communal/data/model/CommunalWidgetCategories;
    .locals 1

    new-instance v0, Lcom/android/systemui/communal/data/model/CommunalWidgetCategories;

    invoke-direct {v0, p0}, Lcom/android/systemui/communal/data/model/CommunalWidgetCategories;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/communal/data/model/CommunalWidgetCategories;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/systemui/communal/data/model/CommunalWidgetCategories;

    iget p1, p1, Lcom/android/systemui/communal/data/model/CommunalWidgetCategories;->categories:I

    iget p0, p0, Lcom/android/systemui/communal/data/model/CommunalWidgetCategories;->categories:I

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/communal/data/model/CommunalWidgetCategories;->categories:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommunalWidgetCategories(categories="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/communal/data/model/CommunalWidgetCategories;->categories:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
