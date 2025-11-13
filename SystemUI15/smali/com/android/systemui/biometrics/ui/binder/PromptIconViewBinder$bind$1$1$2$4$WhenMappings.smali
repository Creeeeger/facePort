.class public abstract synthetic Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2$4$WhenMappings;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;->values()[Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;->Fingerprint:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;->Coex:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;->Face:Lcom/android/systemui/biometrics/ui/viewmodel/PromptIconViewModel$AuthType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$2$4$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
