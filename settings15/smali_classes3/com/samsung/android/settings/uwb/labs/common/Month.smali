.class public final enum Lcom/samsung/android/settings/uwb/labs/common/Month;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/uwb/labs/common/Month;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/uwb/labs/common/Month;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/samsung/android/settings/uwb/labs/common/Month;

    const-string v1, "January"

    const-string v2, "JANUARY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/settings/uwb/labs/common/Month;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/common/Month;

    const-string v2, "February"

    const-string v3, "FEBRUARY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/settings/uwb/labs/common/Month;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/uwb/labs/common/Month;

    const-string v3, "March"

    const-string v4, "MARCH"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/samsung/android/settings/uwb/labs/common/Month;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/uwb/labs/common/Month;

    const-string v4, "April"

    const-string v5, "APRIL"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/settings/uwb/labs/common/Month;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lcom/samsung/android/settings/uwb/labs/common/Month;

    const-string v5, "May"

    const-string v6, "MAY"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/samsung/android/settings/uwb/labs/common/Month;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lcom/samsung/android/settings/uwb/labs/common/Month;

    const-string v6, "June"

    const-string v7, "JUNE"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/android/settings/uwb/labs/common/Month;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lcom/samsung/android/settings/uwb/labs/common/Month;

    const-string v7, "July"

    const-string v8, "JULY"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/samsung/android/settings/uwb/labs/common/Month;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lcom/samsung/android/settings/uwb/labs/common/Month;

    const-string v8, "August"

    const-string v9, "AUGUST"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/samsung/android/settings/uwb/labs/common/Month;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lcom/samsung/android/settings/uwb/labs/common/Month;

    const-string v9, "September"

    const-string v10, "SEPTEMBER"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/samsung/android/settings/uwb/labs/common/Month;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lcom/samsung/android/settings/uwb/labs/common/Month;

    const-string v10, "October"

    const-string v11, "OCTOBER"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/samsung/android/settings/uwb/labs/common/Month;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v10, Lcom/samsung/android/settings/uwb/labs/common/Month;

    const-string v11, "November"

    const-string v12, "NOVEMBER"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/samsung/android/settings/uwb/labs/common/Month;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v11, Lcom/samsung/android/settings/uwb/labs/common/Month;

    const-string v12, "December"

    const-string v13, "DECEMBER"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lcom/samsung/android/settings/uwb/labs/common/Month;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    filled-new-array/range {v0 .. v11}, [Lcom/samsung/android/settings/uwb/labs/common/Month;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/uwb/labs/common/Month;->$VALUES:[Lcom/samsung/android/settings/uwb/labs/common/Month;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/settings/uwb/labs/common/Month;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/uwb/labs/common/Month;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/uwb/labs/common/Month;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/uwb/labs/common/Month;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/uwb/labs/common/Month;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/uwb/labs/common/Month;->$VALUES:[Lcom/samsung/android/settings/uwb/labs/common/Month;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/uwb/labs/common/Month;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/uwb/labs/common/Month;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/common/Month;->name:Ljava/lang/String;

    return-object p0
.end method
