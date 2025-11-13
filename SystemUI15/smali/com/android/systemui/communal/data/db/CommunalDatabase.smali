.class public abstract Lcom/android/systemui/communal/data/db/CommunalDatabase;
.super Landroidx/room/RoomDatabase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/communal/data/db/CommunalDatabase$Companion;

.field public static instance:Lcom/android/systemui/communal/data/db/CommunalDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/data/db/CommunalDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/data/db/CommunalDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/data/db/CommunalDatabase;->Companion:Lcom/android/systemui/communal/data/db/CommunalDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract communalWidgetDao()Lcom/android/systemui/communal/data/db/CommunalWidgetDao;
.end method
