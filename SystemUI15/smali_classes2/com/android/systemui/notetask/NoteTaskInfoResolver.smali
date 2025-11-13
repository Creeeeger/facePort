.class public final Lcom/android/systemui/notetask/NoteTaskInfoResolver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/notetask/NoteTaskInfoResolver$Companion;

.field public static final EMPTY_APPLICATION_INFO_FLAGS:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final roleManager:Landroid/app/role/RoleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/notetask/NoteTaskInfoResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/notetask/NoteTaskInfoResolver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->Companion:Lcom/android/systemui/notetask/NoteTaskInfoResolver$Companion;

    const-class v0, Lcom/android/systemui/notetask/NoteTaskInfoResolver;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    sput-object v0, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->EMPTY_APPLICATION_INFO_FLAGS:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    return-void
.end method

.method public constructor <init>(Landroid/app/role/RoleManager;Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->roleManager:Landroid/app/role/RoleManager;

    iput-object p2, p0, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final resolveInfo(Lcom/android/systemui/notetask/NoteTaskEntryPoint;ZLandroid/os/UserHandle;)Lcom/android/systemui/notetask/NoteTaskInfo;
    .locals 7

    sget-object v0, Lcom/android/systemui/notetask/NoteTaskRoleManagerExt;->INSTANCE:Lcom/android/systemui/notetask/NoteTaskRoleManagerExt;

    iget-object v1, p0, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->roleManager:Landroid/app/role/RoleManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.app.role.NOTES"

    invoke-virtual {v1, v0, p3}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/android/systemui/notetask/NoteTaskInfo;

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->packageManager:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->Companion:Lcom/android/systemui/notetask/NoteTaskInfoResolver$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v1, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->EMPTY_APPLICATION_INFO_FLAGS:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    invoke-virtual {p0, v2, v1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;Landroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v3, p0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "Couldn\'t find notes app UID"

    sget-object v3, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->TAG:Ljava/lang/String;

    invoke-static {v3, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, v0

    move-object v4, p3

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/notetask/NoteTaskInfo;-><init>(Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/systemui/notetask/NoteTaskEntryPoint;Z)V

    return-object v0

    :cond_1
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method
