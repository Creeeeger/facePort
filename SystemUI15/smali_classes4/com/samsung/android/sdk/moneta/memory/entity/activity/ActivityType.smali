.class public final enum Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

.field public static final Companion:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType$Companion;

.field public static final enum Eating:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

.field public static final enum Exercising:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

.field public static final enum ListeningToMusic:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

.field public static final enum Moving:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

.field public static final enum Paying:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

.field public static final enum SharingContents:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

.field public static final enum Sleeping:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

.field public static final enum SpeakingOnPhone:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

.field public static final enum Staying:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

.field public static final enum StoringContents:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

.field public static final enum TakingPictures:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

.field public static final enum WatchingVideo:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;
    .locals 12

    sget-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->Eating:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    sget-object v1, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->Exercising:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    sget-object v2, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->ListeningToMusic:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    sget-object v3, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->Moving:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    sget-object v4, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->Paying:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    sget-object v5, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->Sleeping:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    sget-object v6, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->SpeakingOnPhone:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    sget-object v7, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->Staying:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    sget-object v8, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->TakingPictures:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    sget-object v9, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->WatchingVideo:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    sget-object v10, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->SharingContents:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    sget-object v11, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->StoringContents:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    filled-new-array/range {v0 .. v11}, [Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    const-string v1, "Eating"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->Eating:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    const-string v1, "Exercising"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->Exercising:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    const-string v1, "ListeningToMusic"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->ListeningToMusic:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    const-string v1, "Moving"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->Moving:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    const-string v1, "Paying"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->Paying:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    const-string v1, "Sleeping"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->Sleeping:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    const-string v1, "SpeakingOnPhone"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->SpeakingOnPhone:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    const-string v1, "Staying"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->Staying:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    const-string v1, "TakingPictures"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->TakingPictures:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    const-string v1, "WatchingVideo"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->WatchingVideo:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    const-string v1, "SharingContents"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->SharingContents:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    const-string v1, "StoringContents"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->StoringContents:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    invoke-static {}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->$values()[Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->$VALUES:[Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->Companion:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->$VALUES:[Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->value:I

    return p0
.end method
