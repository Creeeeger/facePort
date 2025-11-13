.class public final Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/communal/data/db/CommunalWidgetDao;


# instance fields
.field public final __db:Landroidx/room/RoomDatabase;

.field public final __deleteAdapterOfCommunalWidgetItem:Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$1;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance p1, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$1;-><init>(Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;)V

    iput-object p1, p0, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;->__deleteAdapterOfCommunalWidgetItem:Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$1;

    return-void
.end method
