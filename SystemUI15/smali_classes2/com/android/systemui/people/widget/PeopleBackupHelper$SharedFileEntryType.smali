.class final enum Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

.field public static final enum CONTACT_URI:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

.field public static final enum PEOPLE_TILE_KEY:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

.field public static final enum UNKNOWN:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

.field public static final enum WIDGET_ID:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->UNKNOWN:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    new-instance v1, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    const-string v2, "WIDGET_ID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->WIDGET_ID:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    new-instance v2, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    const-string v3, "PEOPLE_TILE_KEY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->PEOPLE_TILE_KEY:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    new-instance v3, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    const-string v4, "CONTACT_URI"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->CONTACT_URI:Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->$VALUES:[Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;
    .locals 1

    const-class v0, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;
    .locals 1

    sget-object v0, Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->$VALUES:[Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    invoke-virtual {v0}, [Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    return-object v0
.end method
