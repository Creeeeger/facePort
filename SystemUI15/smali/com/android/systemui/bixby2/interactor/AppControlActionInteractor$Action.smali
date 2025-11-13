.class final enum Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum app_resizable:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum change_layout_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum check_launchervisible:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum check_orientation:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum check_splitstate:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum check_splittype:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum close_all_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum close_all_application_except_currentapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum close_all_application_except_specificapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum close_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum close_foreground_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum close_multiple_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum exchange_position_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum get_packageinsplit:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum launch_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum launch_mostrecent_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum maximize_app:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum open_recentsapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum replaceapp_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum start_multiwindow:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum startapp_splitposition:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;


# direct methods
.method private static synthetic $values()[Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;
    .locals 21

    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v1, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v2, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_foreground_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v3, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->launch_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v4, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->start_multiwindow:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v5, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->open_recentsapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v6, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->launch_mostrecent_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v7, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_multiple_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v8, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->app_resizable:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v9, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->startapp_splitposition:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v10, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->exchange_position_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v11, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->change_layout_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v12, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->replaceapp_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v13, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->maximize_app:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v14, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_orientation:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v15, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splittype:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v16, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splitstate:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v17, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_launchervisible:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v18, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->get_packageinsplit:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v19, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application_except_currentapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    sget-object v20, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application_except_specificapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    filled-new-array/range {v0 .. v20}, [Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "close_application"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "close_all_application"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "close_foreground_application"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_foreground_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "launch_application"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->launch_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string/jumbo v1, "start_multiwindow"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->start_multiwindow:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "open_recentsapp"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->open_recentsapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "launch_mostrecent_application"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->launch_mostrecent_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "close_multiple_application"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_multiple_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "app_resizable"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->app_resizable:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string/jumbo v1, "startapp_splitposition"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->startapp_splitposition:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "exchange_position_splitscreen"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->exchange_position_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "change_layout_splitscreen"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->change_layout_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "replaceapp_splitscreen"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->replaceapp_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "maximize_app"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->maximize_app:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "check_orientation"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_orientation:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "check_splittype"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splittype:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "check_splitstate"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splitstate:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "check_launchervisible"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_launchervisible:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "get_packageinsplit"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->get_packageinsplit:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "close_all_application_except_currentapp"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application_except_currentapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    const-string v1, "close_all_application_except_specificapp"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application_except_specificapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-static {}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->$values()[Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;
    .locals 1

    const-class v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;
    .locals 1

    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    invoke-virtual {v0}, [Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    return-object v0
.end method
