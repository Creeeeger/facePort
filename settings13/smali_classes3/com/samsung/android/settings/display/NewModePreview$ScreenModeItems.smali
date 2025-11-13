.class Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;
.super Ljava/lang/Object;
.source "NewModePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/NewModePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenModeItems"
.end annotation


# instance fields
.field private mDBValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNameStringId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDBValue(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mDBValue:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNameStringId(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mNameStringId:Ljava/util/List;

    return-object p0
.end method

.method private constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;)V
    .locals 0

    .line 988
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mNameStringId:Ljava/util/List;

    .line 991
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mDBValue:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;-><init>(Lcom/samsung/android/settings/display/NewModePreview;)V

    return-void
.end method


# virtual methods
.method public addItem(II)V
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mNameStringId:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mDBValue:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getSize()I
    .locals 0

    .line 999
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mNameStringId:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getValueByPosition(I)I
    .locals 0

    .line 1023
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mDBValue:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
