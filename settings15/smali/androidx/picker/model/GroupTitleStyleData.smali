.class public final enum Landroidx/picker/model/GroupTitleStyleData;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/picker/model/GroupTitleStyleData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/picker/model/GroupTitleStyleData;",
        "",
        "",
        "backgroundColorId",
        "I",
        "getBackgroundColorId",
        "()I",
        "textColorId",
        "getTextColorId",
        "picker-app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/picker/model/GroupTitleStyleData;

.field public static final enum SOLID:Landroidx/picker/model/GroupTitleStyleData;

.field public static final enum TRANSPARENT:Landroidx/picker/model/GroupTitleStyleData;


# instance fields
.field private final backgroundColorId:I

.field private final textColorId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/picker/model/GroupTitleStyleData;

    const v1, 0x7f0604c4

    const v2, 0x7f0604c5

    const-string v3, "SOLID"

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/picker/model/GroupTitleStyleData;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroidx/picker/model/GroupTitleStyleData;->SOLID:Landroidx/picker/model/GroupTitleStyleData;

    new-instance v1, Landroidx/picker/model/GroupTitleStyleData;

    const v2, 0x7f0604c6

    const v3, 0x7f0604c7

    const-string v4, "TRANSPARENT"

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2, v3, v4}, Landroidx/picker/model/GroupTitleStyleData;-><init>(IIILjava/lang/String;)V

    sput-object v1, Landroidx/picker/model/GroupTitleStyleData;->TRANSPARENT:Landroidx/picker/model/GroupTitleStyleData;

    filled-new-array {v0, v1}, [Landroidx/picker/model/GroupTitleStyleData;

    move-result-object v0

    sput-object v0, Landroidx/picker/model/GroupTitleStyleData;->$VALUES:[Landroidx/picker/model/GroupTitleStyleData;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Landroidx/picker/model/GroupTitleStyleData;->backgroundColorId:I

    iput p3, p0, Landroidx/picker/model/GroupTitleStyleData;->textColorId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/picker/model/GroupTitleStyleData;
    .locals 1

    const-class v0, Landroidx/picker/model/GroupTitleStyleData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/picker/model/GroupTitleStyleData;

    return-object p0
.end method

.method public static values()[Landroidx/picker/model/GroupTitleStyleData;
    .locals 1

    sget-object v0, Landroidx/picker/model/GroupTitleStyleData;->$VALUES:[Landroidx/picker/model/GroupTitleStyleData;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/picker/model/GroupTitleStyleData;

    return-object v0
.end method


# virtual methods
.method public final getBackgroundColorId()I
    .locals 0

    iget p0, p0, Landroidx/picker/model/GroupTitleStyleData;->backgroundColorId:I

    return p0
.end method

.method public final getTextColorId()I
    .locals 0

    iget p0, p0, Landroidx/picker/model/GroupTitleStyleData;->textColorId:I

    return p0
.end method
