.class public final enum Lcom/android/systemui/shared/regionsampling/RegionDarkness;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/shared/regionsampling/RegionDarkness;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/shared/regionsampling/RegionDarkness;

.field public static final enum DARK:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

.field public static final enum DEFAULT:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

.field public static final enum LIGHT:Lcom/android/systemui/shared/regionsampling/RegionDarkness;


# instance fields
.field private final isDark:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/shared/regionsampling/RegionDarkness;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/systemui/shared/regionsampling/RegionDarkness;->DEFAULT:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    new-instance v1, Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    const-string v3, "DARK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/systemui/shared/regionsampling/RegionDarkness;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/android/systemui/shared/regionsampling/RegionDarkness;->DARK:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    new-instance v3, Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    const-string v4, "LIGHT"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v2}, Lcom/android/systemui/shared/regionsampling/RegionDarkness;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/android/systemui/shared/regionsampling/RegionDarkness;->LIGHT:Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    filled-new-array {v0, v1, v3}, [Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/regionsampling/RegionDarkness;->$VALUES:[Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/android/systemui/shared/regionsampling/RegionDarkness;->isDark:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/shared/regionsampling/RegionDarkness;
    .locals 1

    const-class v0, Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/shared/regionsampling/RegionDarkness;
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/regionsampling/RegionDarkness;->$VALUES:[Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/shared/regionsampling/RegionDarkness;

    return-object v0
.end method
