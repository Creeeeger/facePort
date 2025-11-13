.class public final enum Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslAppPickerSelectLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectLayoutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

.field public static final enum AUTO:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;->AUTO:Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    new-instance v1, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    const-string v2, "PORT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    const-string v3, "LAND"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2}, [Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    move-result-object v0

    sput-object v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;->$VALUES:[Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;
    .locals 1

    const-class v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    return-object p0
.end method

.method public static values()[Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;
    .locals 1

    sget-object v0, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;->$VALUES:[Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    invoke-virtual {v0}, [Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectLayoutType;

    return-object v0
.end method
