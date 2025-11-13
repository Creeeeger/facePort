.class public final Landroidx/room/support/PrePackagedCopyOpenHelper$createFrameworkOpenHelper$configuration$1;
.super Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $version:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    iput p1, p0, Landroidx/room/support/PrePackagedCopyOpenHelper$createFrameworkOpenHelper$configuration$1;->$version:I

    invoke-direct {p0, p2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public final onOpen(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 1

    const/4 v0, 0x1

    iget p0, p0, Landroidx/room/support/PrePackagedCopyOpenHelper$createFrameworkOpenHelper$configuration$1;->$version:I

    if-ge p0, v0, :cond_0

    iget-object p1, p1, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    :cond_0
    return-void
.end method

.method public final onUpgrade(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;II)V
    .locals 0

    return-void
.end method
