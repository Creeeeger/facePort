.class public final Lcom/android/systemui/statusbar/notification/icon/IconPack;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field public mAppIconDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

.field public final mAreIconsAvailable:Z

.field public mIsImportantConversation:Z

.field public mPeopleAvatarDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

.field public final mShelfIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field public mSmallIconDescriptor:Lcom/android/internal/statusbar/StatusBarIcon;

.field public final mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method private constructor <init>(ZLcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/notification/icon/IconPack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mAreIconsAvailable:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mShelfIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mAodIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz p5, :cond_0

    iget-boolean p1, p5, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mIsImportantConversation:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mIsImportantConversation:Z

    :cond_0
    return-void
.end method

.method public static buildEmptyPack(Lcom/android/systemui/statusbar/notification/icon/IconPack;)Lcom/android/systemui/statusbar/notification/icon/IconPack;
    .locals 7

    new-instance v6, Lcom/android/systemui/statusbar/notification/icon/IconPack;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/icon/IconPack;-><init>(ZLcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/notification/icon/IconPack;)V

    return-object v6
.end method

.method public static buildPack(Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/notification/icon/IconPack;)Lcom/android/systemui/statusbar/notification/icon/IconPack;
    .locals 7

    new-instance v6, Lcom/android/systemui/statusbar/notification/icon/IconPack;

    const/4 v1, 0x1

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/icon/IconPack;-><init>(ZLcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/notification/icon/IconPack;)V

    return-object v6
.end method
