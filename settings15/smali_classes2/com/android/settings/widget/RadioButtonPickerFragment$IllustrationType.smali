.class public final enum Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/RadioButtonPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IllustrationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;

.field public static final enum LOTTIE_ANIMATION:Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;

    const-string v1, "LOTTIE_ANIMATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;->LOTTIE_ANIMATION:Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;

    filled-new-array {v0}, [Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;

    move-result-object v0

    sput-object v0, Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;->$VALUES:[Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;
    .locals 1

    const-class v0, Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;
    .locals 1

    sget-object v0, Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;->$VALUES:[Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;

    invoke-virtual {v0}, [Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/widget/RadioButtonPickerFragment$IllustrationType;

    return-object v0
.end method
