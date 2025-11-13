.class final enum Lcom/android/settings/spa/app/appcompat/SpinnerItem;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/spa/app/appcompat/SpinnerItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0082\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/android/settings/spa/app/appcompat/SpinnerItem;",
        "",
        "",
        "stringResId",
        "I",
        "getStringResId",
        "()I",
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
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field public static final synthetic $VALUES:[Lcom/android/settings/spa/app/appcompat/SpinnerItem;

.field public static final enum All:Lcom/android/settings/spa/app/appcompat/SpinnerItem;

.field public static final enum Overridden:Lcom/android/settings/spa/app/appcompat/SpinnerItem;

.field public static final enum Suggested:Lcom/android/settings/spa/app/appcompat/SpinnerItem;


# instance fields
.field private final stringResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    const/4 v1, 0x0

    const v2, 0x7f1430e5

    const-string v3, "Suggested"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings/spa/app/appcompat/SpinnerItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/spa/app/appcompat/SpinnerItem;->Suggested:Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    new-instance v1, Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    const/4 v2, 0x1

    const v3, 0x7f140f64

    const-string v4, "All"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/settings/spa/app/appcompat/SpinnerItem;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/settings/spa/app/appcompat/SpinnerItem;->All:Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    new-instance v2, Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    const/4 v3, 0x2

    const v4, 0x7f1430e0

    const-string v5, "Overridden"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/settings/spa/app/appcompat/SpinnerItem;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/settings/spa/app/appcompat/SpinnerItem;->Overridden:Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    filled-new-array {v0, v1, v2}, [Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/spa/app/appcompat/SpinnerItem;->$VALUES:[Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/android/settings/spa/app/appcompat/SpinnerItem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/spa/app/appcompat/SpinnerItem;->stringResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/spa/app/appcompat/SpinnerItem;
    .locals 1

    const-class v0, Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/spa/app/appcompat/SpinnerItem;
    .locals 1

    sget-object v0, Lcom/android/settings/spa/app/appcompat/SpinnerItem;->$VALUES:[Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    return-object v0
.end method


# virtual methods
.method public final getStringResId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/spa/app/appcompat/SpinnerItem;->stringResId:I

    return p0
.end method
