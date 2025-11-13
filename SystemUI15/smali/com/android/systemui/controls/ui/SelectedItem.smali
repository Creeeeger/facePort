.class public abstract Lcom/android/systemui/controls/ui/SelectedItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/SelectedItem$Companion;

.field public static final EMPTY_SELECTION:Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

.field public static final EMPTY_SELECTION_COMPONENT:Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/controls/ui/SelectedItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/SelectedItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/SelectedItem;->Companion:Lcom/android/systemui/controls/ui/SelectedItem$Companion;

    new-instance v0, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    sget-object v1, Lcom/android/systemui/controls/controller/StructureInfo;->Companion:Lcom/android/systemui/controls/controller/StructureInfo$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/controls/controller/StructureInfo;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;-><init>(Lcom/android/systemui/controls/controller/StructureInfo;)V

    sput-object v0, Lcom/android/systemui/controls/ui/SelectedItem;->EMPTY_SELECTION:Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    new-instance v0, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    sget-object v1, Lcom/android/systemui/controls/controller/ComponentInfo;->Companion:Lcom/android/systemui/controls/controller/ComponentInfo$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/controls/controller/ComponentInfo;->EMPTY_COMPONENT_INFO:Lcom/android/systemui/controls/controller/ComponentInfo;

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    sput-object v0, Lcom/android/systemui/controls/ui/SelectedItem;->EMPTY_SELECTION_COMPONENT:Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/ui/SelectedItem;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public abstract getName()Ljava/lang/CharSequence;
.end method
