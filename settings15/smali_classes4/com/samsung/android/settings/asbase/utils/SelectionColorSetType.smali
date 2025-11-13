.class public final enum Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;",
        "",
        "",
        "selectedId",
        "I",
        "unselectedId",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;

.field public static final enum Icon:Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;

.field public static final enum Text:Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;


# instance fields
.field private final selectedId:I

.field private final unselectedId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;

    const v1, 0x7f06072a

    const v2, 0x7f06072c

    const-string v3, "Icon"

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;->Icon:Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;

    new-instance v1, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;

    const v2, 0x7f060729

    const v3, 0x7f06072b

    const-string v4, "Text"

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;-><init>(IIILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;->Text:Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;->$VALUES:[Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;->selectedId:I

    iput p3, p0, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;->unselectedId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;->$VALUES:[Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;

    return-object v0
.end method


# virtual methods
.method public final getColorId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;->selectedId:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/samsung/android/settings/asbase/utils/SelectionColorSetType;->unselectedId:I

    :goto_0
    return p0
.end method
