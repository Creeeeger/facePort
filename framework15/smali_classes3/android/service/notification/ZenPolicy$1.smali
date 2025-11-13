.class Landroid/service/notification/ZenPolicy$1;
.super Ljava/lang/Object;
.source "ZenPolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/notification/ZenPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/ZenPolicy;
    .locals 10

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    const/4 v1, 0x7

    const/16 v2, 0x9

    if-eqz v0, :cond_0

    new-instance v0, Landroid/service/notification/ZenPolicy;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$smtrimList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$smtrimList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Landroid/service/notification/ZenPolicy;-><init>(Ljava/util/List;Ljava/util/List;IIII)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/service/notification/ZenPolicy;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy;-><init>()V

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$smtrimList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityCategories(Landroid/service/notification/ZenPolicy;Ljava/util/List;)V

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$smtrimList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmVisualEffects(Landroid/service/notification/ZenPolicy;Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityMessages(Landroid/service/notification/ZenPolicy;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityCalls(Landroid/service/notification/ZenPolicy;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmConversationSenders(Landroid/service/notification/ZenPolicy;I)V

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputappBypassDndFlag(Landroid/service/notification/ZenPolicy;I)V

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmAppsToBypassDnd(Landroid/service/notification/ZenPolicy;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputexceptionContactsFlag(Landroid/service/notification/ZenPolicy;I)V

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmExceptionContacts(Landroid/service/notification/ZenPolicy;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmIsContactsOverridden(Landroid/service/notification/ZenPolicy;Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmIsAppBypassDndOverridden(Landroid/service/notification/ZenPolicy;Z)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/service/notification/ZenPolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/ZenPolicy;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/notification/ZenPolicy;
    .locals 1

    new-array v0, p1, [Landroid/service/notification/ZenPolicy;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/service/notification/ZenPolicy$1;->newArray(I)[Landroid/service/notification/ZenPolicy;

    move-result-object p1

    return-object p1
.end method
