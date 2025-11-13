.class public final Lcom/android/systemui/notetask/shortcut/CreateNoteTaskShortcutActivity;
.super Landroidx/activity/ComponentActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final roleManager:Landroid/app/role/RoleManager;

.field public final shortcutManager:Landroid/content/pm/ShortcutManager;


# direct methods
.method public constructor <init>(Landroid/app/role/RoleManager;Landroid/content/pm/ShortcutManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/notetask/shortcut/CreateNoteTaskShortcutActivity;->roleManager:Landroid/app/role/RoleManager;

    iput-object p2, p0, Lcom/android/systemui/notetask/shortcut/CreateNoteTaskShortcutActivity;->shortcutManager:Landroid/content/pm/ShortcutManager;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/android/systemui/notetask/NoteTaskRoleManagerExt;->INSTANCE:Lcom/android/systemui/notetask/NoteTaskRoleManagerExt;

    iget-object v0, p0, Lcom/android/systemui/notetask/shortcut/CreateNoteTaskShortcutActivity;->roleManager:Landroid/app/role/RoleManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0, v1}, Lcom/android/systemui/notetask/NoteTaskRoleManagerExt;->createNoteShortcutInfoAsUser(Landroid/app/role/RoleManager;Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/notetask/shortcut/CreateNoteTaskShortcutActivity;->shortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
