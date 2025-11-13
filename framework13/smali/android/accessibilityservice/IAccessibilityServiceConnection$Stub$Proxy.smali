.class Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    iput-object p1, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1039
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1042
    iget-object v0, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o disableSelf()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1328
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1330
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1331
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1332
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1337
    nop

    .line 1338
    return-void

    .line 1335
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1337
    throw v2
.end method

.method public blacklist dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V
    .locals 5
    .param p1, "sequence"    # I
    .param p2, "gestureSteps"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1657
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1659
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1660
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1661
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1662
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1663
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1664
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1667
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1669
    nop

    .line 1670
    return-void

    .line 1667
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1669
    throw v2
.end method

.method public greylist-max-o findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;
    .locals 5
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "threadId"    # J
    .param p9, "arguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1081
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1084
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1087
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1089
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    .line 1091
    const/4 v2, 0x0

    invoke-virtual {v0, p9, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1092
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1093
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1094
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1097
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1099
    nop

    .line 1100
    return-object v2

    .line 1097
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1099
    throw v2
.end method

.method public greylist-max-o findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 5
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1105
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1108
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1111
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1114
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    .line 1115
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1116
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1117
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1120
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1122
    nop

    .line 1123
    return-object v2

    .line 1120
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1122
    throw v2
.end method

.method public greylist-max-o findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 5
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "viewId"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1128
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1131
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1133
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1134
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1136
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1137
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    .line 1138
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1139
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1140
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1143
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1145
    nop

    .line 1146
    return-object v2

    .line 1143
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1145
    throw v2
.end method

.method public greylist-max-o findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 5
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "focusType"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1151
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1154
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1156
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1157
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1160
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    .line 1161
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1162
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1163
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1166
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1168
    nop

    .line 1169
    return-object v2

    .line 1166
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1168
    throw v2
.end method

.method public greylist-max-o focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 5
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "direction"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1174
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1177
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1180
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1183
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    .line 1184
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1185
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1186
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1189
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1191
    nop

    .line 1192
    return-object v2

    .line 1189
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1191
    throw v2
.end method

.method public blacklist getCurrentMagnificationRegion(I)Landroid/graphics/Region;
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1445
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1448
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1450
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1451
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1452
    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1455
    .local v2, "_result":Landroid/graphics/Region;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1457
    nop

    .line 1458
    return-object v2

    .line 1455
    .end local v2    # "_result":Landroid/graphics/Region;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1457
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1046
    const-string v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    return-object v0
.end method

.method public blacklist getMagnificationCenterX(I)F
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1397
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1398
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1401
    .local v2, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1403
    nop

    .line 1404
    return v2

    .line 1401
    .end local v2    # "_result":F
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1403
    throw v2
.end method

.method public blacklist getMagnificationCenterY(I)F
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1409
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1412
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1415
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1416
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1419
    .local v2, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1421
    nop

    .line 1422
    return v2

    .line 1419
    .end local v2    # "_result":F
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1421
    throw v2
.end method

.method public blacklist getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1355
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1358
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1361
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1362
    sget-object v3, Landroid/accessibilityservice/MagnificationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/MagnificationConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1365
    .local v2, "_result":Landroid/accessibilityservice/MagnificationConfig;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1367
    nop

    .line 1368
    return-object v2

    .line 1365
    .end local v2    # "_result":Landroid/accessibilityservice/MagnificationConfig;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1367
    throw v2
.end method

.method public blacklist getMagnificationRegion(I)Landroid/graphics/Region;
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1427
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1430
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1432
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1433
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1434
    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1437
    .local v2, "_result":Landroid/graphics/Region;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1439
    nop

    .line 1440
    return-object v2

    .line 1437
    .end local v2    # "_result":Landroid/graphics/Region;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1439
    throw v2
.end method

.method public blacklist getMagnificationScale(I)F
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1373
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1376
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1378
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1379
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1380
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1383
    .local v2, "_result":F
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1385
    nop

    .line 1386
    return v2

    .line 1383
    .end local v2    # "_result":F
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1385
    throw v2
.end method

.method public blacklist getOverlayWindowToken(I)Landroid/os/IBinder;
    .locals 5
    .param p1, "displayid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1691
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1694
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1695
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1696
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1697
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1698
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1701
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1703
    nop

    .line 1704
    return-object v2

    .line 1701
    .end local v2    # "_result":Landroid/os/IBinder;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1703
    throw v2
.end method

.method public greylist-max-o getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1276
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1279
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1280
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1281
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1282
    sget-object v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1285
    .local v2, "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1287
    nop

    .line 1288
    return-object v2

    .line 1285
    .end local v2    # "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1287
    throw v2
.end method

.method public blacklist getSoftKeyboardShowMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1555
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1558
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1559
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1560
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1561
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1564
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1566
    nop

    .line 1567
    return v2

    .line 1564
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1566
    throw v2
.end method

.method public blacklist getSystemActions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1311
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1314
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1315
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1316
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1317
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1320
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1322
    nop

    .line 1323
    return-object v2

    .line 1320
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1322
    throw v2
.end method

.method public greylist-max-o getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 5
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1221
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1224
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1227
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1228
    sget-object v3, Landroid/view/accessibility/AccessibilityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1231
    .local v2, "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1233
    nop

    .line 1234
    return-object v2

    .line 1231
    .end local v2    # "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1233
    throw v2
.end method

.method public blacklist getWindowIdForLeashToken(Landroid/os/IBinder;)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1709
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1712
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1713
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1714
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1715
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1716
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1719
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1721
    nop

    .line 1722
    return v2

    .line 1719
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1721
    throw v2
.end method

.method public blacklist getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1239
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1242
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1243
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1244
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1245
    sget-object v3, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1248
    .local v2, "_result":Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1250
    nop

    .line 1251
    return-object v2

    .line 1248
    .end local v2    # "_result":Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1250
    throw v2
.end method

.method public blacklist getWindowsMainDisplay(I)Ljava/util/List;
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1257
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1260
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1263
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1264
    sget-object v3, Landroid/view/accessibility/AccessibilityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1267
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1269
    nop

    .line 1270
    return-object v2

    .line 1267
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1269
    throw v2
.end method

.method public greylist-max-o isAccessibilityButtonAvailable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1624
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1627
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1628
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1629
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1630
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1633
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1635
    nop

    .line 1636
    return v2

    .line 1633
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1635
    throw v2
.end method

.method public greylist-max-o isFingerprintGestureDetectionAvailable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1674
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1677
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1678
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1679
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1680
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1683
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1685
    nop

    .line 1686
    return v2

    .line 1683
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1685
    throw v2
.end method

.method public blacklist logTrace(JLjava/lang/String;JLjava/lang/String;IJILandroid/os/Bundle;)V
    .locals 16
    .param p1, "timestamp"    # J
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "loggingTypes"    # J
    .param p6, "callingParams"    # Ljava/lang/String;
    .param p7, "processId"    # I
    .param p8, "threadId"    # J
    .param p10, "callingUid"    # I
    .param p11, "serializedCallingStackInBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1807
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1808
    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 1809
    move-object/from16 v4, p3

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 1810
    move-wide/from16 v5, p4

    :try_start_2
    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 1811
    move-object/from16 v7, p6

    :try_start_3
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 1812
    move/from16 v8, p7

    :try_start_4
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1813
    move-wide/from16 v9, p8

    :try_start_5
    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1814
    move/from16 v11, p10

    :try_start_6
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1815
    const/4 v0, 0x0

    move-object/from16 v12, p11

    :try_start_7
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1816
    move-object/from16 v13, p0

    :try_start_8
    iget-object v0, v13, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v14, 0x2b

    const/4 v15, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v14, v1, v15, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1819
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1820
    nop

    .line 1821
    return-void

    .line 1819
    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_2

    :catchall_6
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_1

    :catchall_7
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_0

    :catchall_8
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v4, p3

    :goto_0
    move-wide/from16 v5, p4

    :goto_1
    move-object/from16 v7, p6

    :goto_2
    move/from16 v8, p7

    :goto_3
    move-wide/from16 v9, p8

    :goto_4
    move/from16 v11, p10

    :goto_5
    move-object/from16 v12, p11

    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1820
    throw v0
.end method

.method public blacklist onDoubleTap(I)V
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1887
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1889
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1890
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1891
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1892
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1895
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1897
    nop

    .line 1898
    return-void

    .line 1895
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1897
    throw v2
.end method

.method public blacklist onDoubleTapAndHold(I)V
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1902
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1904
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1905
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1906
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1907
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1910
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1912
    nop

    .line 1913
    return-void

    .line 1910
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1912
    throw v2
.end method

.method public greylist-max-o performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 5
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "action"    # I
    .param p5, "arguments"    # Landroid/os/Bundle;
    .param p6, "interactionId"    # I
    .param p7, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p8, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1197
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1200
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1203
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    const/4 v2, 0x0

    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1205
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1206
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1207
    invoke-virtual {v0, p8, p9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1208
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1209
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1210
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1213
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1215
    nop

    .line 1216
    return v2

    .line 1213
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1215
    throw v2
.end method

.method public greylist-max-o performGlobalAction(I)Z
    .locals 5
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1293
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1296
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1298
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1299
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1300
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1303
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1305
    nop

    .line 1306
    return v2

    .line 1303
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1305
    throw v2
.end method

.method public blacklist requestDelegating(I)V
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1871
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1872
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1874
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1875
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1876
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1877
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1880
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1882
    nop

    .line 1883
    return-void

    .line 1880
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1882
    throw v2
.end method

.method public blacklist requestDragging(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "pointerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1856
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1858
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1859
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1860
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1861
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1862
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1865
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1867
    nop

    .line 1868
    return-void

    .line 1865
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1867
    throw v2
.end method

.method public blacklist requestTouchExploration(I)V
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1841
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1843
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1844
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1845
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1846
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1849
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1851
    nop

    .line 1852
    return-void

    .line 1849
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1851
    throw v2
.end method

.method public blacklist resetCurrentMagnification(IZ)Z
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1482
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1485
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1487
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1488
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1489
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1490
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1493
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1495
    nop

    .line 1496
    return v2

    .line 1493
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1495
    throw v2
.end method

.method public blacklist resetMagnification(IZ)Z
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1463
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1466
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1469
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1470
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1471
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1474
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1476
    nop

    .line 1477
    return v2

    .line 1474
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1476
    throw v2
.end method

.method public greylist-max-o sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .locals 5
    .param p1, "sequence"    # I
    .param p2, "gestureSteps"    # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1641
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1643
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1644
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1645
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1646
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1647
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1650
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1652
    nop

    .line 1653
    return-void

    .line 1650
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1652
    throw v2
.end method

.method public blacklist setAnimationScale(F)V
    .locals 5
    .param p1, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1917
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1919
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1920
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1921
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1922
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1925
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1927
    nop

    .line 1928
    return-void

    .line 1925
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1927
    throw v2
.end method

.method public blacklist setAttributionTag(Ljava/lang/String;)V
    .locals 5
    .param p1, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1066
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1068
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1070
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1071
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1076
    nop

    .line 1077
    return-void

    .line 1074
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1076
    throw v2
.end method

.method public blacklist setCacheEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1791
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1793
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1794
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1795
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1796
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1799
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1801
    nop

    .line 1802
    return-void

    .line 1799
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1801
    throw v2
.end method

.method public blacklist setFocusAppearance(II)V
    .locals 5
    .param p1, "strokeWidth"    # I
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1775
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1777
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1778
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1779
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1780
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1781
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1784
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1786
    nop

    .line 1787
    return-void

    .line 1784
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1786
    throw v2
.end method

.method public blacklist setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1742
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1743
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1745
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1746
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1747
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1748
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1749
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1752
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1754
    nop

    .line 1755
    return-void

    .line 1752
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1754
    throw v2
.end method

.method public blacklist setInputMethodEnabled(Ljava/lang/String;Z)I
    .locals 5
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1605
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1608
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1609
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1611
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1612
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1613
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1616
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1618
    nop

    .line 1619
    return v2

    .line 1616
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1618
    throw v2
.end method

.method public blacklist setMagnificationCallbackEnabled(IZ)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1523
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1524
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1525
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1526
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1527
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1530
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1532
    nop

    .line 1533
    return-void

    .line 1530
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1532
    throw v2
.end method

.method public blacklist setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/accessibilityservice/MagnificationConfig;
    .param p3, "animate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1501
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1504
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1506
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1507
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1508
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1509
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1510
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1513
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1515
    nop

    .line 1516
    return v2

    .line 1513
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1515
    throw v2
.end method

.method public greylist-max-o setOnKeyEventResult(ZI)V
    .locals 5
    .param p1, "handled"    # Z
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1343
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1345
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1346
    iget-object v1, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1350
    nop

    .line 1351
    return-void

    .line 1349
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1350
    throw v1
.end method

.method public blacklist setServiceDetectsGesturesEnabled(IZ)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1825
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1827
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1829
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1830
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1831
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1834
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1836
    nop

    .line 1837
    return-void

    .line 1834
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1836
    throw v2
.end method

.method public greylist-max-o setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1051
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1053
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1054
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1055
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1056
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1061
    nop

    .line 1062
    return-void

    .line 1059
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1061
    throw v2
.end method

.method public greylist-max-o setSoftKeyboardCallbackEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1572
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1574
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1575
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1576
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1577
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1580
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1582
    nop

    .line 1583
    return-void

    .line 1580
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1582
    throw v2
.end method

.method public greylist-max-o setSoftKeyboardShowMode(I)Z
    .locals 5
    .param p1, "showMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1537
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1540
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1542
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1543
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1544
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1547
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1549
    nop

    .line 1550
    return v2

    .line 1547
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1549
    throw v2
.end method

.method public blacklist setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1759
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1761
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1762
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1763
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1764
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1765
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1768
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1770
    nop

    .line 1771
    return-void

    .line 1768
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1770
    throw v2
.end method

.method public blacklist switchToInputMethod(Ljava/lang/String;)Z
    .locals 5
    .param p1, "imeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1587
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1590
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1591
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1592
    iget-object v2, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1593
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1594
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1597
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1599
    nop

    .line 1600
    return v2

    .line 1597
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1599
    throw v2
.end method

.method public blacklist takeScreenshot(ILandroid/os/RemoteCallback;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1727
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1729
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1730
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1731
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1732
    iget-object v3, p0, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1733
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1736
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1738
    nop

    .line 1739
    return-void

    .line 1736
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1738
    throw v2
.end method
