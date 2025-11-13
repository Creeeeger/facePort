.class public abstract Landroidx/room/RoomOpenDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final identityHash:Ljava/lang/String;

.field public final legacyIdentityHash:Ljava/lang/String;

.field public final version:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/room/RoomOpenDelegate;->version:I

    iput-object p2, p0, Landroidx/room/RoomOpenDelegate;->identityHash:Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/RoomOpenDelegate;->legacyIdentityHash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createAllTables(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract dropAllTables(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract onCreate()V
.end method

.method public abstract onOpen(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract onPostMigrate()V
.end method

.method public abstract onPreMigrate(Landroidx/sqlite/SQLiteConnection;)V
.end method

.method public abstract onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Landroidx/room/RoomOpenDelegate$ValidationResult;
.end method
